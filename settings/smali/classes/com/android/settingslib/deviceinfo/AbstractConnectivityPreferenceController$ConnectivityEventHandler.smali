.class Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;
.super Landroid/os/Handler;
.source "AbstractConnectivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityEventHandler"
.end annotation


# instance fields
.field private mPreferenceController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;->mPreferenceController:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;->mPreferenceController:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    .line 101
    .local v0, "preferenceController":Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
    if-nez v0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->updateConnectivity()V

    .line 108
    nop

    .line 112
    return-void

    .line 110
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
