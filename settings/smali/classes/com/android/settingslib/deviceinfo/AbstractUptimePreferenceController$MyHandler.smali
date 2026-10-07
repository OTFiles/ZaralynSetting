.class Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;
.super Landroid/os/Handler;
.source "AbstractUptimePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;

    .line 121
    .local v0, "status":Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
    if-nez v0, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_1

    .line 127
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->access$000(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V

    .line 128
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    nop

    .line 134
    return-void

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
