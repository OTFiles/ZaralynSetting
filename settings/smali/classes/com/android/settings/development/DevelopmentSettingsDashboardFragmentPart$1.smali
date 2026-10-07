.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettingsDashboardFragmentPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 122
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$1;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 126
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settings/development/AdbOnChangeListener;

    if-eqz v2, :cond_0

    .line 127
    move-object v2, v1

    check-cast v2, Lcom/android/settings/development/AdbOnChangeListener;

    invoke-interface {v2}, Lcom/android/settings/development/AdbOnChangeListener;->onAdbSettingChanged()V

    .line 129
    .end local v1
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method
