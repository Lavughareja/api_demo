import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "FoodName": "FoodName 4",
      "FoodImage": "https://loremflickr.com/640/480/food",
      "FoodDetails": "Magnam doloribus laudantium quam quidem.",
     // "Time": 95,
      "id": "4"
    },
    {
      "FoodName": "FoodName 5",
      "FoodImage": "https://loremflickr.com/640/480/food",
      "FoodDetails": "Asperiores blanditiis sit delectus quasi dicta.",
     // "Time": 66,
      "id": "5"
    },
    {
      "FoodName": "FoodName 6",
      "FoodImage": "https://loremflickr.com/640/480/food",
      "FoodDetails": "Ratione cumque animi unde libero dolor dolores corporis quas placeat.",
      "Time": 19,
      "id": "6"
    },
    {
      "FoodName": "FoodName 7",
      "FoodImage": "https://loremflickr.com/640/480/food",
      "FoodDetails": "Ipsam quod rem magnam facilis natus.",
     // "Time": 58,
      "id": "7"
    },
    {
      "FoodName": "FoodName 8",
      "FoodImage": "https://loremflickr.com/640/480/food",
      "FoodDetails": "Animi error ex porro veritatis.",
     // "Time": 69,
      "id": "8"
    },
    {
      "FoodName": "dcs",
      "FoodImage": "https://tinyjpg.com/images/social/website.jpg",
      "FoodDetails": "Hic impedit velit quia perspiciatis corrupti.",
     // "Time": 67,
      "id": "10"
    },
    {
      "FoodName": "papd",
      "FoodImage": "https://tinyjpg.com/images/social/website.jpg",
      "FoodDetails": "Nulla eveniet debitis distinctio reiciendis eligendi voluptate blanditiis voluptas tempore.",
     // "Time": 90,
      "id": "11"
    },
    {
      "FoodName": "fvxcxvf",
      "FoodImage": "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg",
      "FoodDetails": "Voluptas nulla nisi.",
      "Time": 63,
      "id": "12"
    },
    {
      "FoodName": "gfcf",
      "FoodImage": "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg",
      "FoodDetails": "Necessitatibus minus eligendi laudantium eligendi non nihil aut aperiam.",
     // "Time": 19,
      "id": "13"
    },
    {
      "FoodName": "der",
      "FoodImage": "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg",
      "FoodDetails": "Nobis nam aspernatur ab.",
      //"Time": 29,
      "id": "14"
    },
    {
      "FoodName": "Hetu",
      "FoodImage": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFBUYGRgZGhwYGBgYGhoYGBwZGBgZGhgcGhkcIS4lHB4rIRoYJjgmKy8xNTU1GiU7QDszPy40NTEBDAwMEA8QGhISHDQhHSExMTQxNDQ0NDQxNDQ0NDQxMTQ0NDQxPzQ0NDQ0NDQ0MTQ0NDExPzE/MTE0PzQxMTQxNP/AABEIAOQA3QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABQEDBAYHAgj/xABAEAACAQIEAwUFBQQJBQAAAAABAgADEQQSITEFBkEiUWFxgQcTMpGhQrHB0fAjUmJyFDM0c4Kys+HxFRYkVJL/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/EACARAQEAAgICAgMAAAAAAAAAAAABAhEhMRITA1EiMkH/2gAMAwEAAhEDEQA/AOzREQEREBERAREQEREBERAREQERKXgViIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIlmvXVFLOQqqCzE6AAbmBdmoc3880cF2FHvK1vgBsF7i7dPLea5zj7QTkZMIxQnQuykOR3oCLAeJ1nNcBwvE4pmamhbqzsdL+LHUkx1yslt0luKc6Y3EElqzIl9Ep9hQPTU+pkNieK17397UPS+d+nrJepwSpRUB0HTVTca9PAzNTlhnS7VEpi1yCLkX79rTPlGvCoPA82YyiQaeJqC2tmYup81e4nReWvaujWTGrkbQe9QEp5sguV9LzmfFuBPSuwdHUHdT+EiFE1LKzZrt9W4TFpVUPTdXU7MpDA+omRPnfljGVMLaqcUqITcolS5bzSx+ondeAcWp4mitWm2YHQ7XB6g2jcLLEpERCEREBERAREQEREBERAREQEREBERApNQ9pmJKYFlBPbZU03sTc/dNvmtc/YE1cFUCi7JZwO/Lv8AS8LHz7jqhJtc2Gmv62mxYbHOiZFLKFAPZvfTwFvDea/i6djfvmz0GJpq663WzEfnM5dNY9qU8S7tdnY5tGLixU2uAdbdDMSoH7TEsQz2yhsubxJN9ALbak22khhsLUcZgo0FwNtOl/Ez1isA65rE5gLsuuW3mJnc6ddXtD4im5+K4FibE3/AdBfa9jNdqCzEeOk2xmATW2x8/lNSxJ7R85rGuWc0v0aIJBIvodJ1L2Q5qZcMxyvbKh8Mwvb9bTQuXaYdwh+L7B0tfxvvOqcA5RZHWqKjgi3ZtYADYDr6/SWdpdadDlZ5XaepWSIiAiIgIiICIiAiIgIiICIiAiIgJbqrcES5KEQOD+0DgmSq9WkmWlfKLbFh8Vh0EiuVXLutI6rfMR4AG86P7TMSlKiFYXY3WmviR22PcALTnHIlVVxQzG11YC+ovJn01hfyjfsbw/ZkDIR1ViLjuIGhHnLeEwGRChBOftMzMWYnrqdZMHGJl1ZQfMSNxmNQjRrnY2BJ8dp5fye/UaPzVhsjFxsw/Hf1mm1m3Pr8puXOeI7G2pPqLTRmqXE9GHTxfL+zPwGMemyuh1UhhcAi420M6tyz7WVNkxiW6CpTGnqnT0nIcKGcZVHrL5wTLva/hvN7Y0+psBj6dZQ9J1dTsVN/+Jlz5m5f5grYRw1FyP3kucrDuZdjO7cp81Usal1OWoo7aHceI718Y0jY4iICIiAiIgIiICIiAiIgIiICIiAlCZWazz7xj+jYOo4NncFE77sLX9IHGPaFxw4jGuQ10Q5E7rLobesj+D1slZHuBY7npIV2Ja51mQjEm3SKR2BiaiB6LkC3ge75dZG1MOdWeoW66k7eQmucKr1UQ2bQ6jvNpH8X4xXdiobTw20nLx57d58l0s83Y1WsiG4G/wCvL75qXhM7EoRvqZi0k1nSON5vKUwD5ACOu/l+rzJxJO+/3iRyVNCJ7OKJt5Wk0u10mSfLXG3w1dKim1j2h0K9QZCh7i8tM82w+r+G4xa1NKiG6uoYHe4I75mTlPsa5iDI2Ddu0t3p3O6/aUeW/rOrSKREQEREBERAREQEREBERAREoTAt1agVSzEBQLknQADckzgXtI5r/plbJTP7KncJ/Eern8JvHtR44fdHD02UA6uSTc21y2A8pxilTLN3y9I8KlhfrLmDbWXq6207hMWibGY7a6bEuNsh8rd2+v5ShK5b7sR6CRNVzbwGvznp6+gA32+XWNLtax4kUDYySq/CSZHFOsqV6Jnm89zzaEeqTQ8ou89NNIkOA8TfDV6ddPiRg1u8bEeoJE+n+F45a9JKyEFXUMCPH8jcek+UFnYPYtx02fBOdBepT9T21+evqYquuRESBERAREQEREBERAREpA8u9heYOI4lTCFiwy9TeR/MPG0oaM1rgm/dqBceV/lOL8f5nqO7ojkIxNyNjrcFe7/mXoZfPmJpmofcOxvq6k5lB6HXUHwkRwjDdhmA6b22lMFw73lsp7Xj19ZNcVtSpBFtfdrabdJzyy3dOkx1N1qOO0MxFYXvGOq3lvDKWvYSxi9suqdJWml9ZaY6WM94etYaym1vGVCBbvmI5mXVs7+evgJmGimXKFB7zfW8nS62hAbT0DpMjEYaxmPaIyuKJ5ZvvlQZbvNouK2sm+VeItQxVGqv2ai38QTZh8iZBAy7SexB6/lKPrak4ZQw2IuPWXJFct4sVcNRqLsyKfpqJKzKkREBERAREQEREBIDmzji4aiWLWZtFHXXr6SYxWJVEZ2NlUEk+U+fefOZGxWIaxsinKoB0sCdfWBhcf5gqYpyXY2HwjppofUy5w3A5wAy3069JE4NRe52k/h8U50QZQetpjK10xkStPDph0LKQWtoBqR6zXuLYwVBmB1tYjxmXWQjW/r3zDocOes6ogJLEDb6mZxjWWXGkNhuHtWfKg3NvC/d9J0zljkIrRrGstn+Fb7Lb4mt16zduVuVKWGpBSgLbsxGpPrsfykxxvFpRw9So7AKFNzceWnjOscXzVxxAtd1UWANgDuANr+NtfWR6G5tMniFfO7v+8xNvM33/GW6Vxt62kpGXQCgWtc98ylpi17eUxaRFv8Aa0yVxFhpM6alYGJ00PpMZ0mXiKobfeYJexy3mozXhzYGWlbS8V36TwvdKi4DPdM6y0NpdprKPoX2ScUFXAhD8VFih/lNmQ+Vjb/CZvc5V7G6TKtRvstlB+V1P+Yek6rIpERAREQEREBLVaoFUsxsBqTLs597S+NZUTD0n7btdrHUKB17rkwNa9oPNj1i1KlcIND42Nz87ATnlHBszXsTbwvNgrIiWVgT1bz33lujVvoq5R9dDp5zFydJitYbCAdxI6G8z0cC9unylmkGdgEBZjoANzedB5a5C+GpiSCLXFMbeGY9TJJtbZGtcC5erYtgQCtPZnI6fwjqZ1DhHAMPhEJRQLC7Ox1sBqSeg0vJejRVAFUWAFh5Caz7SXYYGoFNszIrfyswDD1m5NOdu2gc3c8VcQ7U8MzJRHZXJoz/AMTHovcBNKxfEKmUq1RzfRgWJB7rgnWe6+IIJsdvrMEjW7awt+lhKfUiXlA7v18pczHYAectu3eIRRlXfb6yyzEbSpaY1SrCFSse6Yr3ve8uZr7Sy41gexRJ1lHQjaXKT2EvoN/KBhdJ7VrStROoltO6aR372M3ODuR9twD3rcH6EtOkzR/ZHSy8NpeLO3zc6fObxIpERAREQERKEwMTiWMWjSeqxsqKWJ32E43iXfEO+IcXZifCygdkW/W8nuc+NtiMQuFQkUlINTpmIO3iL2kfiq600ZAADsfDSc88tcR3+LDfNaxWwrO99d9ZIYTgz1XWmgsWNi1tALXMs8KqGpUp07ke8qImm9mYX+lzO3cL4VToIEproOp1OvjGM32Z2Yzhgcs8u08LSACgudXcgZiemvcJPgSsTo4KTWfaFQD4Cst7EAMvmpzfgZsxM5X7Q+Lmq5oUnui2L22Lfu38OvnCybczemB0LH6eUp/RX+JhYfKS6Ic2q6Da35xiaqaq5I+6Y23qIGoQNjMV3HeZXE1RmOXUSPq1+6WMVkVKnTaYrG5tPAqSq7yoyUp2a3f98rUo/lPdPWx7rS9Wa+p3/VpGmCo6Sue0q4lHGl5WXlXnpk1lpBJzlvhrYiulNRck+n+0o7x7MsAaOBpjMSrdsA7qX3HlfX1m4zC4VhhTpIgFgqgfITNgIiICIiBSeKpsCe4E/IT3IzmKvkw1ZhuKbW8yLD6kQa25QjXqNUt8dRmuOi3sD90jeMsfeMLmxtr4WlrivE0QCmpsRYMToQPCRw4kpNy2oU9fOce9169zGSN/9mHAlao+JYX92clMHbORd29AQB5mdTkDyZw73GDpIQMxXO5Bvdn7RN+u4k9Os6ebK7qsRKSsoLmrja4agzX7bArTXqWOgPkJxupimfNcgkm730Jb968mPaBxFmxLoTcU9Bre1/DytNXzkkEdNTb1+Ymcq3jGTUxNh2iCbeV/KazxDFEk62El69HMpJAPiND+vCRGNwZdgqaKoF2bRbnx6nwiGUqNLg6CYzCSVTBop7LMTbuFpbTD5tjbxjaeNR95fHfKV6RB1lae0vbN4ZKHTT9WlxHvvLCN2ZRHhVyoLSyrbiX3Gnj+cxhuYRfpppedc9ivAwRUxbD7RRPT4iPunKuH4ZqrpST4ncIPNiAJ9R8B4SmFoJQpiyotvEt9pj3kmUSQlYiAiIgIiIFJqntCxBXDBRu9RR5he2f8om1zB4pwyniKfu6q3W4OhIII6gjUSVZdXbgWP4K9RzVqshUfCADrfpvMPD4VKaOwCglrAnXQ2HXpOyt7PMKft1sv7vvDb57/AFkpwnlTC4a/uqQ7WhLds2O4u19PCZkrpc5aiPZtxarWoulQKVo5ERlFrjKbg+IsP/qbrLVCgqDKqqo7lAA+Ql2bc6TxVcKCx2AJPpPchea8VkwtQ9WGQebkL9ASfSCTdcfx1M1qtRzbtOWJ23Ognilwy5NvQ+trSYTDBadze7Gw01uSADuLS7RVUCq/WwAG5J13+c4XJ6ccEDxLC5EGljfXTyGsjWQMpTNtpr3Ha0mecapUKqAsS1rKCT37btNPTHAfaFx3n6Szd5MtS6W2wxBtlAHncn6aSxkyky9Wrs22v8oJ+6Z/DuXKlUB3Pu072HaPodvWavHbHd4QWIe8xENrzdsRymhX9nUcnqSBl/C8wv8AtZb2L3Php9NYxyjOWGTXcGLggC5vtMw8PIW5ksnCPdHQX8fSTGAwmZe0L9NdrdP14xcjHBA4fhYcqoOpH3SMrYNg+QC5Jyi3UzecHwwKxIGhAt4CZ/KnLqVscoc2CA1FI3JUqLfWMcudGWF1tnezLktkqpiKy6JmZAR9oHKD/mPynYJbpUgososJcnRyIiICIiAiIgIiICIiAiIgUms890mbDgrsrqz/AMuq/eRNmljFYdaiMji6sLEeB+6S8rLq7cm4q6Wpp3stv8Pa/CWOM11TI+pVXBYAXNv9t/Sb7U5FwrWuauhuO2dOndPdDkjCj4hUcfuu5K+oFr+s5et6PfPpo3B8c74ui1AXJYBgRe9NvjPhprfwnVf+n098iX3uVU69+0rhsBTT4EVdLaDW3dfumVadcZ4zTjnl5XbVecq1WjRVsNTuS4VyqZiqZW1C277C/S85o61CblKjKNcuRyL33NhqZ3QiecniZMp5GOev44NjsVUYDPnpoTZmKMhttuRpLKcUw6HLTZV8MwJJtYlj1J7jO7YjAK4s9yDuDtIh+TMGxu1IH6fdJ4Rr3VyejxKmwtYHp026ytTi6KezbLt0nVxyRgP/AFkPmW/OXKfJuAG2DoetNW++8nri+6uTDj1IDUj5ibPyDhqtXEriAhSiiuMzAjOzCwVb7jUm+2gnQsPwfDp8GHpL/LTRfuEzgoEswku0y+W5TT1ERNuRERAREQMPheKNWjSqkZfeU0fLe9s6hrX62vMyRnLf9kw39xS/01knAREQERKQKxIXi3EGSrSQMgVwwIILVGYWy5AGFgNSWs1tNBvIXAceqUqVJarUyPdIc5DD4sOzorEuczFktf7V9ADA3SJpacWrl1Jr0gDXphkyNdVfCl1Uk1NmfsjQdrv+GX8Bx2vUNMfsAalTKbXcoBSqVGR1D3DjIBqRv8ItYhtsTUBxqqxpsKlI2qVEZURirsqKyU0f3li+pF9dfsgi0rh+YnYgGpQCkj9vlb3dygY0QM/9YCbXv1HZvpA26JrXL/EmKMtSwZfgQntuCXKsGJsQxBUAC4yG56DEPMlTJTYPQYshcgK/acZP/HTt/wBb2jqddPg3sG4RNUo8ark3IpZc4uArhsrYh6AGbPa4y5r212t1mxEsSysMq2FmDdo3Ha8rd94GTE06rXZEFX3pyO7NTpvWdHdFUBAjWJZmILhe5lHQzHrcUqXX9q6kuwxSk/1FL3gCt/B2bDN1DFul4G8xNKGKxJZTSZnvnNHtCxSm75mqL9oMPdqrX6jzNs8SbISuIzoq0mJeoabNVKVve0ldVJDXFI5LaEkabQN5iakeJo1ZwMUUyofeozpmQsEKqqakFRmLP0v1+zK8uV2ejmZs3bcK18ylA5y5HOrrawDHe0CYiIgIiICIiBGct/2TDf3FL/TWScRAREQERECkREBERAREQAiIgIiIAREQEREBERArERAREQERED//2Q==",
      "FoodDetails": "Minima illo vero dolore delectus.",
     // "Time": 3,
      "id": "15"
    }
  ]
;

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["FoodName"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  elevation: 1,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                      NetworkImage(_foundUsers[index]['FoodImage']),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(_foundUsers[index]['FoodName']),
                  ),
                ),
              )
                  : const Text(
                'No results found Please try with diffrent search',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
