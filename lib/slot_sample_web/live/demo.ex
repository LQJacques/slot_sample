defmodule SlotSampleWeb.Demo do
  use Surface.LiveView

  alias SlotSampleWeb.Components.{SurfaceComponentWithSlots, PhoenixComponentWithSlots}

  import PhoenixComponentWithSlots

  def render(assigns) do
    ~F"""
    <div>
      <ul>
        <li>
          Case 1: Works.
          <SurfaceComponentWithSlots>
            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>
          </SurfaceComponentWithSlots>
        </li>
        <li>
          Case 2: Works.
          <SurfaceComponentWithSlots>
            <:header>
              <div style={"background-color: lightgreen;"}>Content for header slot.</div>
            </:header>

            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>

            <:footer>
              <div style={"background-color: lightgray;"}>Content for footer slot.</div>
            </:footer>
          </SurfaceComponentWithSlots>
        </li>
        <li>
          Case 3: Works.
          <PhoenixComponentWithSlots.my_component>
            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>
          </PhoenixComponentWithSlots.my_component>
        </li>
        <li>
          Case 4: Works.
          <.my_component>
            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>
          </.my_component>
        </li>
        <li>
          Case 5: Does not work.
          {!--
          <PhoenixComponentWithSlots.my_component>
            <:header>
              <div style={"background-color: lightgreen;"}>Content for header slot.</div>
            </:header>

            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>

            <:footer>
              <div style={"background-color: lightgray;"}>Content for footer slot.</div>
            </:footer>
          </PhoenixComponentWithSlots.my_component>
          --}
        </li>

        <li>
          Case 6: Does not work.
          {!--
          <.my_component>
            <:header>
              <div style={"background-color: lightgreen;"}>Content for header slot.</div>
            </:header>

            <div style={"background-color: lightblue;"}>Content for body/default slot.</div>

            <:footer>
              <div style={"background-color: lightgray;"}>Content for footer slot.</div>
            </:footer>
          </.my_component>
          --}
        </li>
      </ul>
    </div>
    """
  end
end
