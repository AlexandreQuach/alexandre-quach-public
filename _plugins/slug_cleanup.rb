# _plugins/slug_cleanup.rb
Jekyll::Hooks.register :documents, :pre_render do |document|
  # Debug - montrer quel fichier est traité
  puts "Processing: #{document.path}" if Jekyll.env == 'development'
  
  if document.collection.label == 'insights' || document.collection.label == 'frameworks'
    # Obtenir le nom de fichier sans extension
    original_slug = File.basename(document.path, File.extname(document.path))
    puts "Original slug: #{original_slug}" if Jekyll.env == 'development'
    
    # Si un permalink est déjà défini, ne pas le modifier
    return if document.data['permalink']
    
    # Nettoyer le slug étape par étape
    clean_slug = original_slug.dup
    
    # 1. Supprimer la date du début (YYYY-MM-DD-)
    clean_slug = clean_slug.gsub(/^\d{4}-\d{2}-\d{2}-/, '')
    puts "After date removal: #{clean_slug}" if Jekyll.env == 'development'
    
    # 2. Supprimer les préfixes spécifiques dans l'ordre
    clean_slug = clean_slug.gsub(/^oldblogpost-practical-philosophy-/, '')
    clean_slug = clean_slug.gsub(/^oldblogpost-Practical_philosophy_/, '')
    clean_slug = clean_slug.gsub(/^practical-philosophy-/, '')
    clean_slug = clean_slug.gsub(/^oldblogpost-/, '')
    puts "After prefix removal: #{clean_slug}" if Jekyll.env == 'development'
    
    # 3. Nettoyer les caractères restants
    clean_slug = clean_slug.gsub(/[_\s]+/, '-')
    clean_slug = clean_slug.gsub(/-+/, '-')  # Réduire les tirets multiples
    clean_slug = clean_slug.downcase
    clean_slug = clean_slug.gsub(/^-+|-+$/, '')  # Supprimer tirets début/fin
    puts "After cleanup: #{clean_slug}" if Jekyll.env == 'development'
    
    # 4. Construire l'URL finale
    collection = document.collection.label
    final_permalink = "/#{collection}/#{clean_slug}/"
    puts "Final permalink: #{final_permalink}" if Jekyll.env == 'development'
    
    # 5. Assigner le permalink
    document.data['permalink'] = final_permalink
    puts "Assigned permalink to document" if Jekyll.env == 'development'
  end
end

# Hook alternatif au cas où le premier ne marche pas
Jekyll::Hooks.register :site, :pre_render do |site|
  puts "=== SLUG CLEANUP PLUGIN ACTIVE ===" if Jekyll.env == 'development'
  
  site.collections.each do |label, collection|
    next unless ['insights', 'frameworks'].include?(label)
    
    collection.docs.each do |document|
      next if document.data['permalink']  # Skip si permalink déjà défini
      
      original_slug = File.basename(document.path, File.extname(document.path))
      
      # Même logique de nettoyage
      clean_slug = original_slug.dup
      clean_slug = clean_slug.gsub(/^\d{4}-\d{2}-\d{2}-/, '')
      clean_slug = clean_slug.gsub(/^oldblogpost-practical-philosophy-/, '')
      clean_slug = clean_slug.gsub(/^oldblogpost-Practical_philosophy_/, '') 
      clean_slug = clean_slug.gsub(/^practical-philosophy-/, '')
      clean_slug = clean_slug.gsub(/^oldblogpost-/, '')
      clean_slug = clean_slug.gsub(/[_\s]+/, '-').downcase
      clean_slug = clean_slug.gsub(/-+/, '-').gsub(/^-+|-+$/, '')
      
      final_permalink = "/#{label}/#{clean_slug}/"
      document.data['permalink'] = final_permalink
      
      puts "Site hook - Set permalink for #{original_slug} -> #{final_permalink}" if Jekyll.env == 'development'
    end
  end
end
