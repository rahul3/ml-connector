import ballerinax/java;
import ballerina/io as _;


function loadModel(handle path) returns handle|error = @java:Method {
    name: "importKerasSequentialModelAndWeights",
    class: "org.deeplearning4j.nn.modelimport.keras.KerasModelImport",
    paramTypes: ["java.lang.String"]
} external;


function classPathResource(handle path) returns handle = @java:Constructor {
    class: "org.nd4j.linalg.io.ClassPathResource"
} external;

public function main() {
    var simpleMlp = classPathResource(java:fromString("models/my_model.h5"));
    var load = loadModel(java:fromString("models/my_model.h5"));
    
}