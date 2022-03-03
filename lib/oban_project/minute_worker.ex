defmodule ObanProject.MinuteWorker do
  use Oban.Worker, queue: :default

  @impl Oban.Worker
  def perform(%Oban.Job{}) do
    IO.puts("ESTO SE EJECUTO A LAS #{inspect(DateTime.utc_now())}")
  end
end
