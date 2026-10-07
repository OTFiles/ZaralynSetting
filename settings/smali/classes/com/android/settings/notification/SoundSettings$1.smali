.class Lcom/android/settings/notification/SoundSettings$1;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SoundSettings;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 69
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$1;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 77
    :goto_0
    return-void
.end method
