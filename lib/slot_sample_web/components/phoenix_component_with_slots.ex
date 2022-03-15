defmodule SlotSampleWeb.Components.PhoenixComponentWithSlots do
  use Phoenix.Component

  def my_component(assigns) do
    assigns =
      assigns
      |> assign_new(:header, fn -> [] end)
      |> assign_new(:footer, fn -> [] end)

    ~H"""
    <div>
      Phoenix Component with slots:
      <div class="header">
        Header:
        <%= render_slot(@header) %>
      </div>

      <div class="body">
        Body:
        <%= render_slot(@inner_block) %>
      </div>

      <div class="footer">
        Footer:
        <%= render_slot(@footer) %>
      </div>
    </div>
    """
  end
end
