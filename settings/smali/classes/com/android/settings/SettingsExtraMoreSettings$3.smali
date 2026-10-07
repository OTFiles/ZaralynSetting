.class Lcom/android/settings/SettingsExtraMoreSettings$3;
.super Ljava/lang/Object;
.source "SettingsExtraMoreSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsExtraMoreSettings;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsExtraMoreSettings;

.field final synthetic val$auto:Z


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsExtraMoreSettings;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 576
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings$3;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    iput-boolean p2, p0, Lcom/android/settings/SettingsExtraMoreSettings$3;->val$auto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 579
    new-instance v0, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;

    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings$3;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;-><init>(Lcom/android/settings/SettingsExtraMoreSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget-boolean v2, p0, Lcom/android/settings/SettingsExtraMoreSettings$3;->val$auto:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsExtraMoreSettings$SteelFilmStatusAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 580
    return-void
.end method
