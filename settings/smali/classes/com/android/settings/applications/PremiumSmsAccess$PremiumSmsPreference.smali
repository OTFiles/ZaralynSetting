.class Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "PremiumSmsAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/PremiumSmsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PremiumSmsPreference"
.end annotation


# instance fields
.field private final mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field final synthetic this$0:Lcom/android/settings/applications/PremiumSmsAccess;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V
    .locals 4
    .param p2, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p3, "context"    # Landroid/content/Context;

    .line 197
    iput-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->this$0:Lcom/android/settings/applications/PremiumSmsAccess;

    .line 198
    invoke-direct {p0, p3}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 199
    iput-object p2, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 200
    iget-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p1, p3}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_0
    const p1, 0x7f030066

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setEntries(I)V

    .line 206
    const/4 p1, 0x3

    new-array v0, p1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 207
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 208
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 209
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->getCurrentValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setValue(Ljava/lang/String;)V

    .line 212
    const-string p1, "%s"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    .line 194
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method private getCurrentValue()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    iget v0, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    goto :goto_0

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;-><init>(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 232
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 233
    return-void
.end method
