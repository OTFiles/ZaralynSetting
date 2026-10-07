.class Lcom/android/settings/RadioInfo$3;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->createPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Ljava/lang/Integer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;
    .param p2, "x0"    # Ljava/lang/Integer;

    .line 514
    iput-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iput p3, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .line 552
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1402(Lcom/android/settings/RadioInfo;Z)Z

    .line 553
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;)V

    .line 554
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$900(Lcom/android/settings/RadioInfo;I)V

    .line 531
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1602(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 560
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 561
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 540
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;)[Landroid/telephony/CellLocation;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aput-object p1, v0, v1

    .line 541
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;)[Landroid/telephony/CellLocation;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1100(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 542
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 524
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$800(Lcom/android/settings/RadioInfo;)V

    .line 525
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .line 565
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;)[Landroid/telephony/DataConnectionRealTimeInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aput-object p1, v0, v1

    .line 567
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;)[Landroid/telephony/DataConnectionRealTimeInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 568
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 518
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$600(Lcom/android/settings/RadioInfo;)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 520
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .line 546
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1202(Lcom/android/settings/RadioInfo;Z)Z

    .line 547
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1300(Lcom/android/settings/RadioInfo;)V

    .line 548
    return-void
.end method

.method public onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$2600(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 591
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 1
    .param p1, "preciseState"    # Landroid/telephony/PreciseCallState;

    .line 535
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 536
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 579
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged: ServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2200(Lcom/android/settings/RadioInfo;)[Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aput-object p1, v0, v1

    .line 581
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2200(Lcom/android/settings/RadioInfo;)[Landroid/telephony/ServiceState;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$2300(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2500(Lcom/android/settings/RadioInfo;)V

    .line 585
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 572
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthChanged: SignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2000(Lcom/android/settings/RadioInfo;)[Landroid/telephony/SignalStrength;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aput-object p1, v0, v1

    .line 574
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2000(Lcom/android/settings/RadioInfo;)[Landroid/telephony/SignalStrength;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/RadioInfo$3;->val$slotId:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V

    .line 575
    return-void
.end method
