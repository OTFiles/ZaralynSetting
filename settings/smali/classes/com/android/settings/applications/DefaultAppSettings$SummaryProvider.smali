.class Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DefaultAppSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

.field private final mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

.field private final mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 129
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    .line 130
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    .line 131
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    .line 132
    return-void
.end method

.method private concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "summary1"    # Ljava/lang/CharSequence;
    .param p2, "summary2"    # Ljava/lang/CharSequence;

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-object p2

    .line 153
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    return-object p1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120730

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 136
    if-nez p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    .line 140
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    .line 141
    invoke-virtual {v1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, "summary":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    .line 143
    invoke-virtual {v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    return-void
.end method
