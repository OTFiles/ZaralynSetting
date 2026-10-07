.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;

    .line 67
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;

    .line 67
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "print_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "searchUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x0

    return-object v1

    .line 256
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;
    .locals 3

    .line 237
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 238
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 241
    :cond_0
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    const v2, 0x7f120a47

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 243
    const v2, 0x7f08019d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 244
    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 245
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 247
    return-object v1
.end method

.method private startSubSettingsIfNeeded()V
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 267
    .local v1, "prereference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    .line 271
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 102
    const v0, 0x7f1206a7

    return v0
.end method

.method protected getIntentActionString()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, "android.settings.ACTION_PRINT_SETTINGS"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 97
    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    .line 277
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 282
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PrintSettingsFragment"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0
    .end local v1
    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f15008e

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 111
    const-string v1, "print_jobs_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 113
    const-string v1, "print_services_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 117
    new-instance v1, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 120
    new-instance v1, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 123
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onStart()V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 131
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d009f

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "emptyView":Landroid/view/View;
    const v3, 0x7f0a0268

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f120a4b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v4

    .line 143
    .local v4, "addNewServiceIntent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 144
    const v5, 0x7f0a0034

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    .line 145
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 152
    return-void
.end method
