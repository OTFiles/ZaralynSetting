.class Lcom/android/settings/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SettingPref;

    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method
