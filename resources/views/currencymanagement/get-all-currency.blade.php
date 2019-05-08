@if($all_currs)
    @foreach($all_currs as $all_curr)
        <tr>
            <td>{{$all_curr->base_curr}}</td>
            <td>{{$all_curr->conv_curr}}</td>
            <td>{{$all_curr->rate}}</td>
            <td>{{$all_curr->created_at}}</td>
        </tr>
    @endforeach
@endif