.class Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;
.super Ljava/lang/Object;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    .line 103
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;->this$0:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 5
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 107
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;->this$0:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mmPwdVertifyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 108
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0}, Lcom/android/settings/BeanVariable;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0}, Lcom/android/settings/BeanVariable;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mDialogResultBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v0}, Lcom/android/settings/BeanVariable;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;->this$0:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    const/16 v3, 0x348

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Pair;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;->this$0:Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    .end local v0
    .end local v1
    .end local v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    :goto_0
    return-void
.end method
