.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobsController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;
    .param p2, "x1"    # Lcom/android/settings/print/PrintSettingsFragment$1;

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    .line 291
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 292
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 287
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    .local p2, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    move-object/from16 v0, p0

    .line 300
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 303
    :cond_0
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "print_jobs_category"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 304
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 307
    :cond_1
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 308
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$600(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    .line 309
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 310
    const-string v2, "PrintSettingsFragment"

    const-string v3, "No preference context, skip adding print jobs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 315
    .local v3, "printJob":Landroid/print/PrintJobInfo;
    new-instance v4, Landroid/support/v7/preference/Preference;

    invoke-direct {v4, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 317
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 318
    const-class v6, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x1

    if-eq v6, v7, :cond_5

    const v9, 0x7f120a3f

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 340
    :pswitch_0    # 0x4
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_3

    .line 341
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v9, 0x7f120a3d

    new-array v10, v8, [Ljava/lang/Object;

    .line 343
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 341
    invoke-virtual {v6, v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 345
    :cond_3
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    new-array v10, v8, [Ljava/lang/Object;

    .line 347
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 345
    invoke-virtual {v6, v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 324
    :pswitch_1    # 0x3 0x2
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_4

    .line 325
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v9, 0x7f120a4e

    new-array v10, v8, [Ljava/lang/Object;

    .line 327
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 325
    invoke-virtual {v6, v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 329
    :cond_4
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    new-array v10, v8, [Ljava/lang/Object;

    .line 331
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 329
    invoke-virtual {v6, v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    goto :goto_1

    .line 335
    :cond_5
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v9, 0x7f120a41

    new-array v10, v8, [Ljava/lang/Object;

    .line 337
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 335
    invoke-virtual {v6, v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    nop

    .line 352
    :goto_1
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v9, 0x7f120a44

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 353
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 354
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v12

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v14

    const/16 v16, 0x3

    const/16 v17, 0x3

    .line 353
    invoke-static/range {v12 .. v17}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v8

    .line 352
    invoke-virtual {v6, v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v8, v8, [I

    const v9, 0x1010429

    aput v9, v8, v5

    invoke-virtual {v6, v8}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 359
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 360
    .local v5, "tintColor":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v8

    if-eq v8, v7, :cond_6

    packed-switch v8, :pswitch_data_1

    goto :goto_2

    .line 365
    :pswitch_2    # 0x3 0x2
    iget-object v7, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v7}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x10804c5

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 367
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 368
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 369
    goto :goto_2

    .line 374
    .end local v7
    :cond_6
    :pswitch_3    # 0x4
    iget-object v7, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v7}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x10804c6

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 376
    .restart local v7
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 377
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 378
    nop

    .line 382
    .end local v7
    :goto_2
    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 383
    .local v7, "extras":Landroid/os/Bundle;
    const-string v8, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v9

    invoke-virtual {v9}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v8, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v8}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 386
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    goto/16 :goto_0

    .line 301
    .end local v1
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 388
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2    # 0x2
        :pswitch_2    # 0x3
        :pswitch_3    # 0x4
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 392
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 393
    return-void
.end method
