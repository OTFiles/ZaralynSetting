.class Lcom/android/settings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings;

.field final synthetic val$label:Ljava/lang/CharSequence;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenAccessSettings;

    .line 149
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 152
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 153
    .local v0, "access":Z
    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    .line 156
    invoke-virtual {v2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    .line 160
    invoke-virtual {v2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 162
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
