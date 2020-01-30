{%- set ccIcon = '<i class="fa fa-fw fa-creative-commons"></i>' %}
{%- set ccText = theme.creative_commons.license | upper %}

<div>
<ul class="post-copyright">
  <li class="post-copyright-title">
    <strong>{{ __('post.copyright.title') + __('symbol.colon') }} </strong>
    {{- page.title or title }}
  </li>
  <li class="post-copyright-author">
    <strong>{{ __('post.copyright.author') + __('symbol.colon') }} </strong>
    {{- page.author or author }}
  </li>
  <li class="post-copyright-date">
    <strong>{{ __('post.copyright.date') + __('symbol.colon') }} </strong>
    {{- page.date.format("YYYY年MM月DD日 - HH:mm:ss") or date.format("YYYY年MM月DD日 - HH:mm:ss") }}
  </li>
  <li class="post-copyright-updated">
    <strong>{{ __('post.copyright.updated') + __('symbol.colon') }} </strong>
    {{- page.updated.format("YYYY年MM月DD日 - HH:mm:ss") or page.updated.format("YYYY年MM月DD日 - HH:mm:ss") }}
  </li>
  <li class="post-copyright-link">
    <strong>{{ __('post.copyright.link') + __('symbol.colon') }}</strong>
    {{ next_url(page.permalink, page.permalink, {title: page.title}) }}
  </li>
  <li class="post-copyright-license">
    <strong>{{ __('post.copyright.license_title') + __('symbol.colon') }} </strong>
    {{- __('post.copyright.license_content', next_url(ccURL, ccIcon + ccText)) }}
  </li>
</ul>
</div>
