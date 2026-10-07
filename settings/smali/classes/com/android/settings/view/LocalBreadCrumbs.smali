.class public Lcom/android/settings/view/LocalBreadCrumbs;
.super Landroid/widget/FrameLayout;
.source "LocalBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private childTitle:Ljava/lang/CharSequence;

.field private container:Landroid/view/ViewGroup;

.field private exitButton:Landroid/widget/TextView;

.field private exitTitle:Landroid/widget/TextView;

.field private parentTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getChildTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->childTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->parentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 78
    instance-of v0, p1, Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 80
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 81
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->container:Landroid/view/ViewGroup;

    .line 83
    :cond_0
    instance-of v0, p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/settings/view/LocalBreadCrumbs;->updateChildHomeAsUpView(Z)V

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->setBreadCrumbsTitle(Landroid/app/Activity;)V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/view/LocalBreadCrumbs;->setChildHomeAsUpViewClickable()V

    .line 101
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 107
    instance-of v0, p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 108
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->updateChildHomeAsUpView(Z)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/view/LocalBreadCrumbs;->updateChildHomeAsUpView(Z)V

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->setBreadCrumbsTitle(Landroid/app/Activity;)V

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/view/LocalBreadCrumbs;->setChildHomeAsUpViewClickable()V

    .line 130
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0    # 0x7f0a0090
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 141
    .local v0, "mActivity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 143
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 144
    .end local v0
    goto :goto_0

    .line 147
    :pswitch_1    # 0x7f0a008f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 149
    .restart local v0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 151
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/SettingsApp;->mLocalBreadCrumbsStatusChange:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 155
    .end local v0
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a008f
        :pswitch_1    # 0x7f0a008f
        :pswitch_0    # 0x7f0a0090
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->updateChildHomeAsUpView(Z)V

    .line 49
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .line 50
    .local v0, "fragmentBreadCrumbs":Landroid/app/FragmentBreadCrumbs;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, p0}, Landroid/app/FragmentBreadCrumbs;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 52
    return-void
.end method

.method public setBreadCrumbsTitle(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 159
    .local v0, "fm":Landroid/app/FragmentManager;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 162
    .local v1, "entryCount":I
    if-lez v1, :cond_0

    .line 163
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v2

    .line 164
    .local v2, "base":Landroid/app/FragmentManager$BackStackEntry;
    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v2}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/view/LocalBreadCrumbs;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/view/LocalBreadCrumbs;->updateChildHomeAsUpView(Z)V

    goto :goto_0

    .line 171
    .end local v2
    :cond_0
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->parentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/view/LocalBreadCrumbs;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/view/LocalBreadCrumbs;->updateChildHomeAsUpView(Z)V

    .line 175
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public setChildHomeAsUpViewClickable()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 67
    .local v0, "hasHomeAsUp":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v4, p0

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    if-nez v0, :cond_2

    move-object v3, p0

    nop

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    .end local v0
    :cond_3
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lcom/android/settings/view/LocalBreadCrumbs;->parentTitle:Ljava/lang/CharSequence;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/view/LocalBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/settings/view/LocalBreadCrumbs;->setBreadCrumbsTitle(Landroid/app/Activity;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 178
    iput-object p1, p0, Lcom/android/settings/view/LocalBreadCrumbs;->childTitle:Ljava/lang/CharSequence;

    .line 179
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    return-void
.end method

.method public updateChildHomeAsUpView(Z)V
    .locals 4
    .param p1, "hasHomeAsUp"    # Z

    .line 55
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/android/settings/view/LocalBreadCrumbs;->exitTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/view/LocalBreadCrumbs;->setChildHomeAsUpViewClickable()V

    .line 62
    return-void
.end method
