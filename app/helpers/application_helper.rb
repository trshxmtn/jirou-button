module ApplicationHelper

  def show_meta_tags
    if display_meta_tags.blank?
      assign_meta_tags
    end
    display_meta_tags
  end

  def assign_meta_tags(options = {})
    defaults = t('meta_tags.defaults')
    options.reverse_merge!(defaults)

    site = options[:site]
    title = options[:title]
    description = options[:description]
    keywords = options[:keywords]
    image = options[:image].presence || image_url('jiro_1.png')

    configs = {
        separator: '|',
        reverse: true,
        site: site,
        title: title,
        description: description,
        keywords: keywords,
        canonical: request.original_url,
        og: {
            type: 'article',
            title: title.presence || site,
            description: description,
            url: request.original_url,
            image: image,
            site_name: site
        },
        # fb: {
        #     app_id: '*****'
        # },
        twitter: {
            site: '@mitanni_11',
            card: 'summary_large_image',
        }
    }

    set_meta_tags(configs)
  end

end
