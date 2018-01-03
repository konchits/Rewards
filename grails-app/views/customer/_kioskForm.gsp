<div class="container-fluid">
    <div class="row">
        <div class="col-sm-10 col-sm-offset-1">
            <img src="../assets/coffee_logo_italic.png" class="img-responsive" alt="Responsive image"/>
        </div>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-2">
                <h3> ${welcomeMessage}</h3>
            </div>
            <div class="col-sm-4 col-sm-offset-1">
                <div class="row">
                    <div class="input-group">
                        <g:textField name="phone" type="number" class="form-control" readonly="true"
                                     placeholder="${message(code:'custom.message.inputCellNumber')}" value="${customer?.phone}" />
                        <span class="input-group-btn">
                        <g:submitButton class="btn btn-secondary" name="update" value="Go!" >
                                <i class="fa fa-arrow-right" style="font-size: 2.05rem; color: #ffffff" aria-hidden="true" ></i>
                        </g:submitButton>
                        </span>
                    </div>
                </div>

                <div class="row">
                    <h3/>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="7" onclick="onPressBtn(this.value)">7</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="8" onclick="onPressBtn(this.value)">8</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="9" onclick="onPressBtn(this.value)">9</button>
                    </div>
                </div>

                <div class="row">
                    <h3/>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="4" onclick="onPressBtn(this.value)">4</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="5" onclick="onPressBtn(this.value)">5</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="6" onclick="onPressBtn(this.value)">6</button>
                    </div>
                </div>


                <div class="row">
                    <h3/>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="1" onclick="onPressBtn(this.value)">1</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="2" onclick="onPressBtn(this.value)">2</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="3" onclick="onPressBtn(this.value)">3</button>
                    </div>
                </div>


                <div class="row">
                    <h3/>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <g:link class="btn btn-danger btn-lg btn-block" action="checkin">
                            <i class="fa fa-times fa-lg" aria-hidden="true" ></i>
                        </g:link>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" value="0" onclick="onPressBtn(this.value)">0</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-warning btn-lg btn-block" onclick="backSpace()">
                            <i class="fa fa-long-arrow-left fa-lg" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function onPressBtn(btnValue) {
        var input = document.getElementById("phone"),
            inputValue = input.value;
        input.value = inputValue + btnValue;
    }


    function backSpace() {
        var input = document.getElementById("phone"),
            inputValue = input.value,
            inputLength = inputValue.length;
        if(inputLength > 0){
            input.value = inputValue.slice(0, inputLength - 1)
        }
    }

</script>