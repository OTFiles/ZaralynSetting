.class Lcom/android/settings/DateTimeSettings$3;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DateTimeSettings;

    .line 184
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 187
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$100(Lcom/android/settings/DateTimeSettings;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/DateTimeSettings;->access$102(Lcom/android/settings/DateTimeSettings;J)J

    .line 191
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$208(Lcom/android/settings/DateTimeSettings;)I

    .line 192
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$200(Lcom/android/settings/DateTimeSettings;)I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    .line 193
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v2, v1}, Lcom/android/settings/DateTimeSettings;->access$202(Lcom/android/settings/DateTimeSettings;I)I

    .line 195
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    iput v1, v2, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 196
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    const/16 v3, 0x271b

    invoke-virtual {v2, v3}, Lcom/android/settings/DateTimeSettings;->runCheckParentPassword(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    const/16 v3, 0x64

    iput v3, v2, Lcom/android/settings/DateTimeSettings;->isParentPasswordCheckPassed:I

    .line 198
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v3}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/DateTimeSettings;->exchangeDateTimeZoneStatus(Z)V

    goto :goto_1

    .line 202
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getNetworkConnectionType()I

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    const v3, 0x7f120ba4

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Lcom/android/settings/DateTimeSettings;->syncDateTimeCurrent()V

    .line 207
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/DateTimeSettings;->access$102(Lcom/android/settings/DateTimeSettings;J)J

    .line 208
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$3;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v2, v1}, Lcom/android/settings/DateTimeSettings;->access$202(Lcom/android/settings/DateTimeSettings;I)I

    .line 211
    :cond_2
    :goto_1
    return v1
.end method
