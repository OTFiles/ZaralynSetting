.class Lcom/android/settings/AirplaneModeEnablerOld$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnablerOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnablerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnablerOld;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnablerOld;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AirplaneModeEnablerOld;

    .line 46
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerOld$1;->this$0:Lcom/android/settings/AirplaneModeEnablerOld;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnablerOld$1;->this$0:Lcom/android/settings/AirplaneModeEnablerOld;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnablerOld;->access$000(Lcom/android/settings/AirplaneModeEnablerOld;)V

    .line 54
    :goto_0
    return-void
.end method
