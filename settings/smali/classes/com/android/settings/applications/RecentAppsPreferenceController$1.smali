.class Lcom/android/settings/applications/RecentAppsPreferenceController$1;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "RecentAppsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RecentAppsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RecentAppsPreferenceController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "installReason"    # I
    .param p4, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 150
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 6
    .param p1, "num"    # I

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$200(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$100(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120c9e

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$200(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/RecentAppsPreferenceController;->access$300(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12015e

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    return-void
.end method
