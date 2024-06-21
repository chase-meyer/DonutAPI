var builder = DistributedApplication.CreateBuilder(args);

var apiService = builder.AddProject<Projects.DonutAPI_ApiService>("apiservice");

builder.AddProject<Projects.DonutAPI_Web>("webfrontend")
    .WithExternalHttpEndpoints()
    .WithReference(apiService);

builder.Build().Run();
