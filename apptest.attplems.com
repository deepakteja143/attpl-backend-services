apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: attpltestbackend-ingress
spec:
  rules:
    - host: apptest.attplems.com
      http:
        paths:
          - path: /ams
            pathType: Prefix
            backend:
              service:
                name: service-ams
                port:
                  number: 80
          - path: /bms
            pathType: Prefix
            backend:
              service:
                name: service-bms
                port:
                  number: 80
          - path: /cms
            pathType: Prefix
            backend:
              service:
                name: service-cms
                port:
                  number: 80
          - path: /ems
            pathType: Prefix
            backend:
              service:
                name: service-ems
                port:
                  number: 80
          - path: /exms
            pathType: Prefix
            backend:
              service:
                name: service-exms
                port:
                  number: 80
          - path: /otp
            pathType: Prefix
            backend:
              service:
                name: service-otp
                port:
                  number: 80
          - path: /pms
            pathType: Prefix
            backend:
              service:
                name: service-pms
                port:
                  number: 80
          - path: /sms
            pathType: Prefix
            backend:
              service:
                name: service-sms
                port:
                  number: 80
          - path: /tms
            pathType: Prefix
            backend:
              service:
                name: service-tms
                port:
                  number: 80
          - path: /ums
            pathType: Prefix
            backend:
              service:
                name: service-ums
                port:
                  number: 80
          - path: /vms
            pathType: Prefix
            backend:
              service:
                name: service-vms
                port:
                  number: 80
