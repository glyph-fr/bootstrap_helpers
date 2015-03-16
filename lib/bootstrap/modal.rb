module Bootstrap
  class Modal < Bootstrap::Component
    def container(options = {}, &block)
      merge_class!(options, "modal")
      merge_class!(options, "fade") if options.delete(:fade)
      merge_class!(options, "in") if options.delete(:displayed)

      options.reverse_merge!(
        tabindex: "-1", role: "dialog", "aria-hidden" => "true", "aria-labelledby" => (options[:id] || "modal")
      )

      content_tag(:div, options) do
        content_tag(:div, class: "modal-dialog") do
          content_tag(:div, class: "modal-content") do
            capture { block.call(self) }
          end
        end
      end
    end

    def header(options = {}, &block)
      merge_class!(options, "modal-header")

      content_tag(:div, options) do
        title = content_tag(:h4, class: "modal-title") do
          capture { block.call }
        end
        unless options.delete(:close)
          title
        else
          content_tag(:button, "&times;".html_safe, class: "close", type: "button",
            "data-dismiss" => "modal", "aria-hidden" => "true"
          ) +
          title
        end
      end
    end

    def body(options = {}, &block)
      merge_class!(options, "modal-body")

      content_tag(:div, options) do
        capture { block.call }
      end
    end

    def footer(options = {}, &block)
      merge_class!(options, "modal-footer")

      content_tag(:div, options) do
        capture { block.call }
      end
    end
  end
end
