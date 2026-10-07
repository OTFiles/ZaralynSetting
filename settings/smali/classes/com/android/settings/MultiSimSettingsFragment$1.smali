.class Lcom/android/settings/MultiSimSettingsFragment$1;
.super Landroid/database/ContentObserver;
.source "MultiSimSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiSimSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/MultiSimSettingsFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 283
    iput-object p1, p0, Lcom/android/settings/MultiSimSettingsFragment$1;->this$0:Lcom/android/settings/MultiSimSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 286
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment$1;->this$0:Lcom/android/settings/MultiSimSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MultiSimSettingsFragment;->access$000(Lcom/android/settings/MultiSimSettingsFragment;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/MultiSimSettingsFragment$1;->this$0:Lcom/android/settings/MultiSimSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MultiSimSettingsFragment;->access$000(Lcom/android/settings/MultiSimSettingsFragment;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MultiSimSettingsFragment$1;->this$0:Lcom/android/settings/MultiSimSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/MultiSimSettingsFragment;->access$100(Lcom/android/settings/MultiSimSettingsFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 289
    :cond_0
    return-void
.end method
