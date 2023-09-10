<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(20% 0%, 80% 0%, 100% 0, 100% 80%, 80% 100%, 20% 100%, 0% 80%, 0 0);
            }
        </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron text-white banner-background" style="background:green;">
                <div class="container">
                    <h1 class="display-4">Cloud Computing Tutorial</h1>
                </div>
            </div>
        </div>

        <div class="container" style="background: #ccccccy">
            <h2>What is Cloud Computing?</h2>
            <h4>Cloud computing is a technology paradigm that involves delivering computing services and resources over the internet. Instead of owning and managing physical hardware and software, users and organizations can access and utilize these resources from cloud service providers on a pay-as-you-go basis</h4><br>

            <h4>Cloud computing has transformed the way businesses and individuals deploy, scale, and manage their IT infrastructure and services.</h4>

            <h2>Key characteristics and components of cloud computing include:</h2>

            <ol>
                <li><b>On-Demand Self-Service: </b> Users can provision and manage computing resources (such as servers, storage, and databases) as needed, without human intervention from the service provider.</li>
                <li><b>Broad Network Access: </b> Cloud services are accessible over the internet from various devices, including laptops, smartphones, and tablets, enabling remote access and scalability.</li>
                <li><b>Resource Pooling: </b>  Cloud providers use multi-tenant models, where computing resources are shared among multiple users, optimizing resource utilization and cost-efficiency.</li>
                <li><b>Rapid Elasticity:</b> Cloud resources can be quickly scaled up or down based on demand, allowing for flexibility and cost savings.</li>
                <li><b>Measured Service:</b>  Users are billed based on their actual usage of resources, which can lead to cost savings and efficient resource allocation.</li>
            </ol>
            
            
            <h2>Cloud computing is typically categorized into three main service models:</h2>
            
            <ol>
                <li><b>Infrastructure as a Service (IaaS):</b> IaaS provides virtualized computing resources, including virtual machines, storage, and networking. Users have control over the operating system and applications but not the underlying infrastructure.</li>
                <li><b>Platform as a Service (PaaS):</b> PaaS offers a platform that includes not only infrastructure but also development tools, databases, and runtime environments. It simplifies application development and deployment.</li>
                <li><b>Software as a Service (SaaS):</b> SaaS delivers fully functional software applications over the internet on a subscription basis. Users access these applications through web browsers without worrying about infrastructure or maintenance.</li>
            </ol>
            
            <h2>Different kinds of cloud environments:</h2>
            
            <ol>
                <li><b>Public Cloud:</b> Cloud resources are owned and operated by third-party providers and are made available to the general public. Examples include Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP).</li>
                <li><b>Private Cloud:</b> Resources are dedicated to a single organization and can be hosted on-premises or by a third-party provider. Private clouds offer more control and customization.</li>
                <li><b>Hybrid Cloud:</b> Combines public and private cloud resources, allowing data and applications to be shared between them. This approach provides flexibility and cost optimization.</li>
                <li><b>Multi-Cloud:</b> Involves using multiple cloud providers for different services or regions. It helps mitigate vendor lock-in and provides redundancy.</li>
            </ol>
            
            <h4>Cloud computing has revolutionized IT infrastructure, offering benefits such as cost savings, scalability, accessibility, and agility. It has become a fundamental technology for businesses, governments, and individuals, enabling them to harness the power of computing resources without the burden of managing physical hardware.</h4>
        </div>
        
        <footer class="text-center">
        <p>&copy; 2023 TechBlog</p>
        <p>Contact: ankitpatra070@gmail.com</p>
       
    </footer>

    </body>
</html>
