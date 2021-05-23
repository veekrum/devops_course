## what is monitoring
    With DevOps, the expectation is to develop faster, test regularly, and release more frequently, all while improving quality and cutting costs. To help achieve this, DevOps monitoring tools provide automation and expanded measurement and visibility throughout the entire development lifecycle -- from planning, development, integration and testing, deployment, and operations.

##  The importance of DevOps monitoring 
    - A DevOps approach extends continuous monitoring into the staging, testing, even development environments
        -  Frequent code changes demand visibility 
            - The frequent code changes driven by continuous integration and deployment have increased the pace of change and made production environments increasingly complex
        -  Automated collaboration 
            - DevOps implicitly requires unlocking greater collaboration between development, operations and business functions in teams
        -  Experimentation 
            - The need to optimize products to respond to customer needs, driven by personalization and optimized conversion funnels, leads to constant experimentation. Production environments can run hundreds of experiments and feature flags, which makes it challenging for monitoring systems to communicate the cause of a degraded experience.
        -  Change management 
            - Since most production outages are caused by changes, change management is essential, especially for mission-critical applications, such as those in the financial and healthcare industries. Risks associated with changes need to be determined and approval flows need to be automated based on the risk of the change.
        -  Dependent system monitoring 
            - Distributed systems have become more common, often composed of many smaller, cross-company services. Teams now need to not only monitor the systems they build, but monitor and manage the performance and availability of dependent systems. we need to test also the third party tools

##  Key capabilities of DevOps monitoring 
    In keeping with the DevOps tradition, developing and implementing a monitoring strategy also requires attention to core practices and a set of tools.
    -  Shift-left testing 
        - Shift-left testing that is performed earlier in the life cycle helps to increase quality, shorten test cycles, and reduce errors. For DevOps teams, it is important to extend shift-left testing practices to monitor the health of pre-production environments. This ensures that monitoring is implemented early and often, in order to maintain continuity through production and the quality of monitoring alerts are preserved. 
    -  Alert and incident management 
        - In a cloud-native world incidents are as much a fact of life as bugs in code. These incidents include hardware and network failures, misconfiguration, resource exhaustion, data inconsistencies, and software bugs. DevOps teams should embrace incidents and have high-quality monitors in place to respond to them.
            - Build monitors to ensure dependent services operate as expected
            - Allocate time to build required dashboards and train team members to use them
            - Plan to ensure monitors operate as expected and catch missing monitors
            - Build detectors for security (upgrades/patches/rolling credentials)
            - Cultivate a “measure and monitor everything” mindset with automation determining the response to detected alerts

SOURCE LINK - https://www.atlassian.com/devops/devops-tools/devops-monitoring