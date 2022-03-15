defmodule SlotSampleWeb.Components.SurfaceComponentWithSlots do
  use Surface.Component

  slot header
  slot footer
  slot default, required: true

  def render(assigns) do
    ~F"""
    <div style={"background-color: yellow;"}>
      Surface component with slots:
      <div class="header">
        Header:
        <#slot name="header" />
      </div>

      <div class="body">
        Body:
        <#slot />
      </div>

      <div class="footer">
        Footer:
        <#slot name="footer" />
      </div>
    </div>
    """
  end
end
