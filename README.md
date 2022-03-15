# SlotSample

Example project to demonstrate issue using phoenix component slots and surface component slots.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# Structure:
Live views:
* `lib/slot_sample_web/live/demo.ex` is a ***surface live view*** and maps to `http://localhost:4000/demo`.
* `lib/slot_sample_web/live/demo2.ex` is a ***phoenix live view*** and mapst to `http://localhost:4000/demo2`.

Components:
* `lib/slot_sample_web/components/surface_component_with_slots.ex` is a ***surface*** component.
* `lib/slot_sample_web/components/phoenix_component_with_slots.ex` is a ***phoenix*** component.

# Issue:
Uncomment the commented out cases in `demo.ex` to get the error.
