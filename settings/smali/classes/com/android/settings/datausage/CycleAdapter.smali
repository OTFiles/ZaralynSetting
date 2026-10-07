.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;,
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .param p4, "isHeader"    # Z

    .line 40
    if-eqz p4, :cond_0

    const v0, 0x7f0d00a6

    goto :goto_0

    .line 41
    :cond_0
    const v0, 0x7f0d0089

    .line 40
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 42
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 44
    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 45
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    .line 56
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 58
    .local v2, "item":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 59
    return v1

    .line 56
    .end local v2
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 63
    .end local v0
    .end local v1
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 35
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "chartData"    # Lcom/android/settingslib/net/ChartData;

    move-object/from16 v0, p0

    .line 73
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 74
    invoke-interface {v2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 75
    .local v2, "previousItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 78
    .local v9, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 80
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const-wide v4, 0x7fffffffffffffffL

    .line 81
    .local v4, "historyStart":J
    const-wide/high16 v6, -0x8000000000000000L

    .line 82
    .local v6, "historyEnd":J
    if-eqz v1, :cond_0

    .line 83
    iget-object v8, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    .line 84
    iget-object v8, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v6

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 88
    .local v10, "now":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v8, v4, v12

    if-nez v8, :cond_1

    move-wide v4, v10

    .line 89
    .end local v4
    .local v12, "historyStart":J
    :cond_1
    move-wide v12, v4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v6, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v6, v10, v4

    .line 91
    .end local v6
    .local v14, "historyEnd":J
    :cond_2
    move-wide v14, v6

    const/4 v4, 0x0

    .line 92
    .local v4, "hasCycles":Z
    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eqz p1, :cond_7

    .line 93
    nop

    .line 94
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v5

    move/from16 v20, v4

    .end local v4
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    .local v20, "hasCycles":Z
    :goto_0
    move-object v7, v5

    .line 95
    .end local v5
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 96
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/util/Pair;

    .line 97
    .local v8, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v27

    .line 98
    .local v27, "cycleStart":J
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v29

    .line 101
    .local v29, "cycleEnd":J
    if-eqz v1, :cond_4

    .line 102
    iget-object v4, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v21, v4

    move-wide/from16 v22, v27

    move-wide/from16 v24, v29

    move-object/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 103
    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v31, v7

    iget-wide v6, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .end local v7
    .local v31, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    add-long/2addr v4, v6

    cmp-long v4, v4, v16

    if-lez v4, :cond_3

    move/from16 v4, v19

    goto :goto_1

    :cond_3
    move/from16 v4, v18

    .line 105
    .local v4, "includeCycle":Z
    :goto_1
    move-object/from16 v21, v3

    goto :goto_2

    .end local v4
    .end local v31
    .restart local v7
    :cond_4
    move-object/from16 v31, v7

    .end local v7
    .restart local v31
    move-object/from16 v21, v3

    move/from16 v4, v19

    .end local v3
    .restart local v4
    .local v21, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_2
    move/from16 v22, v4

    .line 108
    .end local v4
    .local v22, "includeCycle":Z
    if-eqz v22, :cond_5

    .line 109
    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v7

    move-object v4, v9

    move-wide/from16 v5, v27

    move-object/from16 v24, v8

    move-wide/from16 v32, v10

    move-object/from16 v23, v31

    move-object v10, v7

    move-wide/from16 v7, v29

    .end local v8
    .end local v10
    .end local v31
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;>;"
    .local v24, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v32, "now":J
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v10}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 110
    const/16 v20, 0x1

    .end local v22
    .end local v24
    .end local v27
    .end local v29
    goto :goto_3

    .line 112
    .end local v23
    .end local v32
    .restart local v10
    .restart local v31
    :cond_5
    move-wide/from16 v32, v10

    move-object/from16 v23, v31

    .line 94
    .end local v10
    .end local v31
    .restart local v23
    .restart local v32
    :goto_3
    move-object/from16 v3, v21

    move-object/from16 v5, v23

    move-wide/from16 v10, v32

    goto :goto_0

    .line 115
    .end local v21
    .end local v23
    .end local v32
    .restart local v3
    .restart local v10
    :cond_6
    move-wide/from16 v32, v10

    goto :goto_4

    .end local v20
    .local v4, "hasCycles":Z
    :cond_7
    move-wide/from16 v32, v10

    move/from16 v20, v4

    .end local v4
    .end local v10
    .restart local v20
    .restart local v32
    :goto_4
    if-nez v20, :cond_c

    .line 117
    move-object v5, v3

    move-wide v3, v14

    .local v3, "cycleEnd":J
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_5
    move-wide v10, v3

    .line 118
    .end local v3
    .local v10, "cycleEnd":J
    cmp-long v3, v10, v12

    if-lez v3, :cond_b

    .line 119
    const-wide v3, 0x90321000L

    sub-long v27, v10, v3

    .line 122
    .restart local v27
    if-eqz v1, :cond_9

    .line 123
    iget-object v3, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v21, v3

    move-wide/from16 v22, v27

    move-wide/from16 v24, v10

    move-object/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v5

    .line 124
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v6

    cmp-long v3, v3, v16

    if-lez v3, :cond_8

    move/from16 v3, v19

    goto :goto_6

    :cond_8
    move/from16 v3, v18

    .line 126
    .local v3, "includeCycle":Z
    :goto_6
    move-object/from16 v21, v5

    goto :goto_7

    .end local v3
    :cond_9
    move-object/from16 v21, v5

    move/from16 v3, v19

    .end local v5
    .restart local v3
    .restart local v21
    :goto_7
    move/from16 v22, v3

    .line 129
    .end local v3
    .restart local v22
    if-eqz v22, :cond_a

    .line 130
    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v7

    move-object v4, v9

    move-wide/from16 v5, v27

    move-object v1, v7

    move-wide v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 132
    :cond_a
    move-wide/from16 v3, v27

    .line 133
    .end local v10
    .end local v22
    .end local v27
    .local v3, "cycleEnd":J
    nop

    .line 117
    move-object/from16 v5, v21

    move-object/from16 v1, p2

    goto :goto_5

    .line 137
    .end local v3
    .end local v21
    .restart local v5
    :cond_b
    move-object v3, v5

    .end local v5
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v1

    .line 139
    .local v1, "position":I
    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 144
    .local v4, "selectedItem":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 145
    iget-object v5, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v21, v5

    move/from16 v24, v1

    invoke-interface/range {v21 .. v26}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 146
    return v18

    .line 149
    .end local v1
    .end local v4
    :cond_d
    return v19
.end method
