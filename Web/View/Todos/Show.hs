module Web.View.Todos.Show where
import Web.View.Prelude
import Data.Maybe as Maybe
import IHP.HaskellSupport

data ShowView = ShowView { todo :: Todo }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={TodosAction}>Todos</a></li>
                <li class="breadcrumb-item active">Show Todo</li>
            </ol>
        </nav>
        <h1>{get #title todo}</h1>
        <p>{get #description todo |> debug |> fromMaybe defaultDescription}</p>
        <div>{get #createdAt todo |> timeAgo}</div>
    |]

defaultDescription :: Text
defaultDescription =
    "No description"
