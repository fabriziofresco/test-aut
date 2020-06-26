{
  "image": "/assets/apps/template.png",
  "tiers": {
    "App": {
      "linkedTiers": [],
      "tierIndex": 1,
      "instances": [
        {
          "instance": {
            "type": "centos78"
          },
          "environments": {
            "Production": {
              "groups": {
                "Default": {
                  "clouds": {
                    "HPE-GreenLake-Cloud": {
                      "backup": {
                        "createBackup": false,
                        "jobAction": "new",
                        "jobRetentionCount": 3,
                        "enabled": true,
                        "showScheduledBackupWarning": false,
                        "veeamManagedServer": ""
                      },
                      "instance": {
                        "layout": {
                          "code": "a3b0e9e4-5fa4-4392-af3f-16c3541b8426",
                          "id": 1175,
                          "provisionTypeCode": "vmware",
                          "name": "Centos Base",
                          "instanceVersion": "1"
                        },
                        "allowExisting": false,
                        "type": "centos78",
                        "userGroup": {
                          "id": ""
                        }
                      },
                      "networkInterfaces": [
                        {
                          "ipMode": "",
                          "primaryInterface": true,
                          "showNetworkPoolLabel": true,
                          "showNetworkDhcpLabel": false,
                          "network": {
                            "idName": "Blue-net",
                            "pool": {
                              "id": 1,
                              "name": "Blue-IP-Pool"
                            },
                            "id": "network-1676",
                            "hasPool": true
                          }
                        }
                      ],
                      "workflow": {
                        "taskSetId": 1
                      },
                      "loadBalancer": [],
                      "volumes": [
                        {
                          "volumeCustomizable": true,
                          "readonlyName": false,
                          "controllerId": 576,
                          "maxIOPS": null,
                          "displayOrder": 0,
                          "unitNumber": "0",
                          "minStorage": 42949672960,
                          "configurableIOPS": false,
                          "controllerMountPoint": "576:0:6:0",
                          "vId": 594,
                          "size": 40,
                          "name": "root",
                          "rootVolume": true,
                          "storageType": 1,
                          "typeId": 1,
                          "id": 250,
                          "resizeable": true,
                          "datastoreId": "auto",
                          "maxStorage": 42949672960
                        }
                      ],
                      "lock": {
                        "config": {
                          "vmwareFolderId": true,
                          "noAgent": true
                        }
                      },
                      "config": {
                        "resourcePoolId": 2,
                        "createUser": true
                      },
                      "plan": {
                        "code": "G1-Medium",
                        "id": 403
                      },
                      "group": {
                        "id": 1
                      },
                      "lockedFields": [
                        "instance.layout.id",
                        "plan.id",
                        "config.resourcePoolId",
                        "volumes",
                        "config.vmwareFolderId",
                        "config.noAgent",
                        "workflow.taskSetId",
                        "networks"
                      ]
                    }
                  }
                }
              }
            }
          }
        }
      ]
    }
  },
  "name": "Ansible Demo",
  "templateImage": "",
  "type": "morpheus",
  "config": {
    "isVpcSelectable": true,
    "isEC2": false
  }
}
