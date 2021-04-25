## what is virtual?
    - something that exists in mind, exists in essence but not in fact or created by a computer.

## what is virtulization?
    - Virtualization is technology that lets you create useful IT services using resources that are traditionally bound to hardware. It allows you to use a physical machine’s full capacity by distributing its capabilities among many users or environments.

## How it starts?
    - Starting from 1960s. most of the companies doesnot have the physical machines, they used the time-sharing technique like multiple users in linux. 
    - In 2000s, all the enterprises adopted the physical servers,they were bound to underused physical hardware. each server could only run 1 vendor-specific task.
    - This is where virtulization comes. it solves two problems
        - companies could partition their servers and run legacy apps on multiple operating system types and versions
        - Servers started being used more efficiently, thereby reducing the costs associated with purchase, set up, cooling, and maintenance.

## Types of Virtulization
    - Data virtualization
    - Desktop virtualization
    - Server virtualization
    - Operating system virtualization
    - Network functions virtualization

## What is hypervisor and how it works?
    - A hypervisor, also known as a virtual machine monitor or VMM, is software that creates and runs virtual machines (VMs). A hypervisor allows one host computer to support multiple guest VMs by virtually sharing its resources, such as memory and processing. 
    - Hypervisors take your physical resources and divide them up so that virtual environments can use them.
    - Resources are partitioned as needed from the physical environment to the many virtual environments

## Types of Hypervisors
    - Type 1” (or “bare metal”)
        - A type 1 hypervisor acts like a lightweight operating system and runs directly on the host’s hardware.Type 1 hypervisors are an OS themselves, a very basic one on top of which you can run virtual machines. The physical machine the hypervisor is running on serves virtualization purposes only. You cannot use it for anything else.
    Type 1 vendors:
        - VMware vSphere with ESX/ESXi
        - KVM (Kernel-Based Virtual Machine)
        - Microsoft Hyper-V
        - Oracle VM
        - Citrix Hypervisor (formerly known as Xen Server)

    - Type 2” (or “hosted”)
        - type 2 hypervisor runs as a software layer on an operating system, like other computer programs.
    - Type 2 vendors
        - Oracle VM VirtualBox
        - VMware Workstation Pro/VMware Fusion
        - Windows Virtual PC 
        - Parallels Desktop

    REF* - https://phoenixnap.com/kb/what-is-hypervisor-type-1-2
