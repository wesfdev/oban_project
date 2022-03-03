defmodule ObanProject.Tower do
use Oban.Worker, queue: :default

  def schedule() do
    %{id: 1, type: 5, code: "313132131231"}
      |> ObanProject.Tower.new(schedule_in: 5)
      |> Oban.insert()
  end

  @impl Oban.Worker
  def perform(%Oban.Job{} = %{args: args}) do
    IO.puts("ESTA ES LA TAREA PROGRAMAADA------")
    IO.inspect(args)
    IO.inspect(args["id"])
    :ok
  end
end
