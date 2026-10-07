.class Lcom/android/settings/DataEnabler$2;
.super Landroid/database/ContentObserver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/DataEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DataEnabler;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 362
    iput-object p1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 365
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$500(Lcom/android/settings/DataEnabler;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$500(Lcom/android/settings/DataEnabler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$100(Lcom/android/settings/DataEnabler;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/DataEnabler;->access$002(Lcom/android/settings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 369
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$000(Lcom/android/settings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v0}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataEnabler$2;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$400(Lcom/android/settings/DataEnabler;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 374
    return-void
.end method
