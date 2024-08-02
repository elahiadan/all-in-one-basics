<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>

<body>

    <div class="container">
        <h1>Home Page</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">User Name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $item)
                <tr>
                    <td scope="row">{{$loop->iteration}}</td>
                    <td class="myButton" data-peter="hello" value="world" style="cursor: pointer">{{$item->name}}</td>
                    <td onclick="name(this)" data-peter="hello">{{$item->category->name ?? ""}}</td>
                    <td>{{$item->price}}</td>
                    <td>{{$item->user->name}}</td>
                    <td><a href="javasript:;" class="btn btn-success" onclick="ajaxCall()">View</a></td>
                </tr>
                @endforeach


            </tbody>
        </table>
    </div>

    <script>
        function ajaxCall() {
            let q = "adan";
            $.ajax({
                url: "{{route('category')}}",
                type: 'POST',
                data: {
                    q
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    console.log(response);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }

        function name(element) {

            // Log the element
            console.log(element);

            // Log the inner HTML of the element
            console.log(element.innerHTML);

            // Log the text content of the element
            console.log(element.textContent);

            // Log the value of the data-peter attribute
            console.log(element.getAttribute('data-peter'));

            // If you are using jQuery
            console.log($(element).text());

            element.style.backgroundColor = 'lightblue';
        }

        $('.myButton').on('click', function(e) {

            console.log(e.target, e.target.textContent);

            // If you are using jQuery
            console.log($(this).data('peter'));

            console.log(this, this.textContent);

            $(this).css('background-color', 'lightblue');
        });
    </script>
</body>

</html>