.class Lcom/android/settings/RadioInfo$7;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 1154
    iput-object p1, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/RadioInfo$7;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3900(Lcom/android/settings/RadioInfo;)V

    .line 1158
    iget-object v0, p0, Lcom/android/settings/RadioInfo$7;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3200(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$7;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    return-void
.end method
