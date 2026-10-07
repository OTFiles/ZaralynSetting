.class Lcom/android/settings/RadioInfo$5;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->updateAllCellInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$updateAllCellInfoResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 1123
    iput-object p1, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/RadioInfo$5;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1126
    iget-object v0, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getAllCellInfo(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1602(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 1127
    iget-object v0, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$2902(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    .line 1128
    iget-object v0, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3100(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$2702(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 1130
    iget-object v0, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3200(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$5;->val$updateAllCellInfoResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1131
    return-void
.end method
