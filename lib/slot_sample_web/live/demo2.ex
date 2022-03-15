defmodule SlotSampleWeb.Demo2 do
  use Phoenix.LiveView

  alias SlotSampleWeb.Components.PhoenixComponentWithSlots

  import PhoenixComponentWithSlots

  def render(assigns) do
    ~H"""
    <div>
      <ul>
        <li>
          Case 4: Works.
          <.my_component>
            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>
          </.my_component>
        </li>
        <li>
          Case 5: Works.
          <PhoenixComponentWithSlots.my_component>
            <:header>
              <div style={"background-color: lightgreen;"}>Content for header slot.</div>
            </:header>

            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>

            <:footer>
              <div style={"background-color: lightgray;"}>Content for footer slot.</div>
            </:footer>
          </PhoenixComponentWithSlots.my_component>
        </li>

        <li>
          Case 6: Works.
          <.my_component>
            <:header>
              <div style={"background-color: lightgreen;"}>Content for header slot.</div>
            </:header>

            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>

            <:footer>
              <div style={"background-color: lightgray;"}>Content for footer slot.</div>
            </:footer>
          </.my_component>
        </li>
      </ul>
    </div>
    """
  end
end
