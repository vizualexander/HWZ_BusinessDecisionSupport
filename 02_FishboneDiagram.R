#
# Beispiel zu "Fishbone Diagram", Ursache-Wirkung-Diagram
# source: https://www.rdocumentation.org/packages/qcc/versions/2.6/topics/cause.and.effect
#
# 26.03.2017


cause.and.effect(cause=list(Measurements=c("Micrometers", "Microscopes", "Inspectors"),
                            Materials=c("Alloys", "Lubricants", "Suppliers"),
                            Personnel=c("Shofts", "Supervisors", "Training", "Operators"),
                            Environment=c("Condensation", "Moisture"),
                            Methods=c("Brake", "Engager", "Angle"),
                            Machines=c("Speed", "Lathes", "Bits", "Sockets")),
                 effect="Surface Flaws")

