.class Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;
.super Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.source "AppPermissionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    .line 53
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-direct {p0}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 8
    .param p1, "standardGrantedPermissionCount"    # I
    .param p2, "requestedPermissionCount"    # I
    .param p3, "additionalGrantedPermissionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p4, "grantedGroupLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 64
    .local v1, "summary":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 65
    const v3, 0x7f120c19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 69
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x1

    if-lez p3, :cond_2

    .line 72
    const v5, 0x7f100031

    new-array v6, v4, [Ljava/lang/Object;

    .line 74
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 72
    invoke-virtual {v0, v5, p3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 77
    const v5, 0x7f120c18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v5, v5, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v6}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v6}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v6, v6, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionsDisabledList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-static {v7}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v4

    nop

    :cond_4
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 84
    .end local v3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
