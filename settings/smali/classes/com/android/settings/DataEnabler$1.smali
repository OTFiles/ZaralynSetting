.class Lcom/android/settings/DataEnabler$1;
.super Ljava/lang/Object;
.source "DataEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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
.method constructor <init>(Lcom/android/settings/DataEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DataEnabler;

    .line 290
    iput-object p1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 293
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 294
    .local v0, "isChecked":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$100(Lcom/android/settings/DataEnabler;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/DataEnabler;->access$002(Lcom/android/settings/DataEnabler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 295
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$000(Lcom/android/settings/DataEnabler;)Ljava/lang/Boolean;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$100(Lcom/android/settings/DataEnabler;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 297
    const/4 v1, 0x2

    .line 298
    .local v1, "mNumSlots":I
    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, v2, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, v2, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    iget-object v2, v2, Lcom/android/settings/DataEnabler;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 301
    :cond_0
    const/4 v2, 0x0

    .local v2, "inum":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v3}, Lcom/android/settings/DataEnabler;->access$200(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 302
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v2
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$200(Lcom/android/settings/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    .line 306
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 305
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    .end local v1
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$100(Lcom/android/settings/DataEnabler;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v1}, Lcom/android/settings/DataEnabler;->access$300(Lcom/android/settings/DataEnabler;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataEnabler$1;->this$0:Lcom/android/settings/DataEnabler;

    invoke-static {v2}, Lcom/android/settings/DataEnabler;->access$400(Lcom/android/settings/DataEnabler;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    const/4 v1, 0x1

    return v1
.end method
