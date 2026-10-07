.class Lcom/android/settings/bluetooth/OthersConnectionSettings$7;
.super Ljava/lang/Object;
.source "OthersConnectionSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OthersConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 971
    iput-object p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$7;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 974
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 975
    .local v0, "status":Z
    if-eqz v0, :cond_0

    .line 976
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_parent_control_transf_bluetooth_switch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 977
    return v3

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$7;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    const/16 v2, 0x3fe

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->runCheckParentPassword(I)I

    .line 980
    const/4 v1, 0x0

    return v1
.end method
