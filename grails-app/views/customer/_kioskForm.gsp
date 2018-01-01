<div class="container-fluid">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <img src="../assets/coffee_logo_italic.png" class="img-responsive" alt="Responsive image"/>
        </div>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-2">
                <h4>Welcome back Mike!</h4><br>
                <h4>You have now 3 points.</h4>
            </div>
            <div class="col-sm-4 col-sm-offset-1">
                <div class="input-group">
                    <g:textField name="phoneNum" type="number" readonly="true" class="form-control"
                               placeholder="Enter your cell number to check in" value="${phoneNum}" />
                    <span class="input-group-btn">
                        <button class="btn btn-secondary" type="button">
                            <i class="fa fa-arrow-right" style="font-size: 2.05rem; color: #ffffff" aria-hidden="true" ></i>
                        </button>
                    </span>
                </div>
                <div class="row">
                    <h3 />
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="7" onclick="padkey(this.value)">7</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="8" onclick="padkey(this.value)">8</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="9" onclick="padkey(this.value)">9</button>
                    </div>
                </div>
                <div class="row">
                    <h3 />
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="4" onclick="padkey(this.value)">4</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="5" onclick="padkey(this.value)">5</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="6" onclick="padkey(this.value)">6</button>
                    </div>
                </div>
                <div class="row">
                    <h3 />
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="1" onclick="padkey(this.value)">1</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="2" onclick="padkey(this.value)">2</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="3" onclick="padkey(this.value)">3</button>
                    </div>
                </div>
                <div class="row">
                    <h3 />
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-danger btn-lg btn-block" name="pad" value="cancel" onclick="deleteNum()">
                            <i class="fa fa-times fa-lg" aria-hidden="true"></i>
                        </button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" name="pad" value="0" onclick="padkey(this.value)">0</button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-warning btn-lg btn-block" name="pad" value="bckSpace" onclick="backSpace()">
                            <i class="fa fa-long-arrow-left fa-lg" aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- java script functions -->
<script> 
    function padkey(btnValue){
        var input = document.getElementById("phoneNum"),
            inputValue = input.value + btnValue;
        
        input.value = inputValue;   
    }

    function deleteNum(){
        var input = document.getElementById("phoneNum");
        input.value = "";
    }
    
    function backSpace(){
        var input = document.getElementById("phoneNum"),
            inputValue = input.value;
        
        if(inputValue.length > 0){
            input.value = inputValue.slice(0, inputValue.length - 1);
        }
    }
</script>