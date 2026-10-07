.class Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbnormalRingerConditionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingerModeChangeReceiver"
.end annotation


# instance fields
.field private final mCondition:Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;)V
    .locals 0
    .param p1, "condition"    # Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;

    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;->mCondition:Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;

    .line 73
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase$RingerModeChangeReceiver;->mCondition:Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/AbnormalRingerConditionBase;->refreshState()V

    .line 81
    :cond_0
    return-void
.end method
