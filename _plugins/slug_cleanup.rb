# _plugins/slug_cleanup.rb
Jekyll::Hooks.register :documents, :pre_render do |document|
  if document.collection.label == 'insights' || document.collection.label == 'frameworks'
    # Nettoyer le slug pour correspondre aux canonical_url
    original_slug = File.basename(document.path, File.extname(document.path))
    
    # Supprimer la date du début
    clean_slug = original_slug.gsub(/^\d{4}-\d{2}-\d{2}-/, '')
    
    # Supprimer les préfixes problématiques spécifiques à vos fichiers
    clean_slug = clean_slug.gsub(/^oldblogpost-practical-philosophy-/, '')
    clean_slug = clean_slug.gsub(/^oldblogpost-Practical_philosophy_/, '')
    clean_slug = clean_slug.gsub(/^oldblogpost-/, '')
    clean_slug = clean_slug.gsub(/^practical-philosophy-/, '')
    
    # Nettoyer les underscores et espaces restants
    clean_slug = clean_slug.gsub(/[_\s]+/, '-').downcase
    
    # Définir l'URL personnalisée si elle n'existe pas déjà
    unless document.data['permalink']
      collection = document.collection.label
      document.data['permalink'] = "/#{collection}/#{clean_slug}/"
    end
  end
end
