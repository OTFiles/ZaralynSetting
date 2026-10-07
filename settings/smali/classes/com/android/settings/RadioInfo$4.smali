.class Lcom/android/settings/RadioInfo$4;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 1115
    iput-object p1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2700(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$2800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 1118
    iget-object v0, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2900(Lcom/android/settings/RadioInfo;)Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1100(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 1119
    iget-object v0, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$4;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 1120
    return-void
.end method
