.class Lcom/android/settings/notification/WorkSoundPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 297
    iput-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 300
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 301
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x16fbb1bb

    if-eq v2, v3, :cond_1

    const v3, 0x3eac4465

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 311
    return-void

    .line 307
    :pswitch_0    # 0x1
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->onManagedProfileRemoved(I)V

    .line 308
    return-void

    .line 303
    :pswitch_1    # 0x0
    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->onManagedProfileAdded(I)V

    .line 304
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method
