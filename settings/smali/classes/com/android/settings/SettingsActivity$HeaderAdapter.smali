.class Lcom/android/settings/SettingsActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .line 1912
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1914
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->adapterContext:Landroid/content/Context;

    .line 1916
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1920
    iput-object p3, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1921
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 1
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1877
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1878
    const/4 v0, 0x0

    return v0

    .line 1880
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    .line 2058
    iget-object v0, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2060
    iget-object v0, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2062
    .local v0, "summary":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2063
    iget-object v1, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2064
    iget-object v1, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2066
    :cond_0
    iget-object v1, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2069
    :goto_0
    iget-object v1, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->ext_icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2071
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a0009

    cmp-long v1, v3, v5

    const/4 v3, 0x4

    if-nez v1, :cond_2

    .line 2072
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->adapterContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/DeviceInfoSettings;->getOtaFotaNewVersion(Landroid/content/Context;)I

    move-result v1

    .line 2073
    .local v1, "iNewVersion":I
    iget-object v4, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->ext_icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2074
    .end local v1
    goto :goto_2

    .line 2075
    :cond_2
    iget-object v1, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->ext_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2078
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1892
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 1886
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1887
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1926
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1927
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 1928
    .local v1, "headerType":I
    const/4 v2, 0x0

    .line 1930
    .local v2, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 1931
    new-instance v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsActivity$1;)V

    .line 1932
    .local v3, "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    const v4, 0x1020010

    const v5, 0x1020016

    const v6, 0x7f0a01d9

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1963
    :pswitch_0    # 0x3
    iget-object v8, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0d012f

    invoke-virtual {v8, v9, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1965
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1966
    nop

    .line 1967
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1968
    nop

    .line 1969
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1970
    const v4, 0x7f0a00b5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 1971
    const v4, 0x7f0a0143

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    .line 1972
    iput-object v2, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    .line 1973
    goto/16 :goto_0

    .line 1951
    :pswitch_1    # 0x2
    iget-object v8, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0d0132

    invoke-virtual {v8, v9, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1953
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1954
    nop

    .line 1955
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1956
    nop

    .line 1957
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1958
    const v4, 0x7f0a043a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1959
    iput-object v2, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    .line 1960
    goto :goto_0

    .line 1976
    :pswitch_2    # 0x1
    iget-object v8, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0d0131

    invoke-virtual {v8, v9, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1979
    const v7, 0x7f0a0187

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->ext_icon:Landroid/widget/ImageView;

    .line 1980
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1981
    nop

    .line 1982
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1983
    nop

    .line 1984
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1985
    iput-object v2, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    goto :goto_0

    .line 1942
    :pswitch_3    # 0x0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d0130

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1945
    const v4, 0x7f0a00cb

    .line 1946
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1947
    iput-object v2, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    .line 1948
    nop

    .line 1988
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1990
    .end local v3
    :cond_0
    move-object v2, p2

    .line 1991
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    .line 1993
    .restart local v3
    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 1994
    if-nez p1, :cond_1

    .line 1995
    iget-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    const v5, 0x7f08009c

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 1996
    :cond_1
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getCount()I

    move-result v5

    const v6, 0x7f08009a

    if-ge v4, v5, :cond_3

    .line 1997
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    .line 1998
    .local v4, "headerex":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v4}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    .line 1999
    .local v5, "headerTypeex":I
    if-nez v5, :cond_2

    .line 2000
    iget-object v6, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    const v7, 0x7f08009b

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 2002
    :cond_2
    iget-object v7, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2004
    .end local v4
    .end local v5
    :goto_2
    goto :goto_3

    .line 2005
    :cond_3
    iget-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->item_view:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2009
    :cond_4
    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 2020
    :pswitch_4    # 0x3
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 2045
    invoke-direct {p0, v0, v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V

    .line 2046
    goto :goto_4

    .line 2016
    :pswitch_5    # 0x2
    invoke-direct {p0, v0, v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V

    .line 2017
    goto :goto_4

    .line 2049
    :pswitch_6    # 0x1
    invoke-direct {p0, v0, v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V

    goto :goto_4

    .line 2011
    :pswitch_7    # 0x0
    iget-object v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2012
    nop

    .line 2053
    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7    # 0x0
        :pswitch_6    # 0x1
        :pswitch_5    # 0x2
        :pswitch_4    # 0x3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1902
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1907
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1897
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 0

    .line 2093
    return-void
.end method

.method public resume()V
    .locals 0

    .line 2090
    return-void
.end method
