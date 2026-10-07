.class Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/notification/RingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/RingVolumePreferenceController;
    .param p2, "x1"    # Lcom/android/settings/notification/RingVolumePreferenceController$1;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$600(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RingVolumePreferenceController$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 181
    :cond_0
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$600(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RingVolumePreferenceController$H;->sendEmptyMessage(I)Z

    .line 184
    :cond_1
    :goto_0
    return-void
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$400(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    .end local v0
    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$500(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->mRegistered:Z

    .line 174
    return-void
.end method
