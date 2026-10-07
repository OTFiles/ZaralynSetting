.class public Lcom/sun/mail/imap/protocol/INTERNALDATE;
.super Ljava/lang/Object;
.source "INTERNALDATE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static df:Ljava/text/SimpleDateFormat;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C


# instance fields
.field protected date:Ljava/util/Date;

.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 64
    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    .line 76
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 100
    sput-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    .line 62
    return-void

    :array_0
    .array-data 2
        0x49S    # 'I'
        0x4eS    # 'N'
        0x54S    # 'T'
        0x45S    # 'E'
        0x52S    # 'R'
        0x4eS    # 'N'
        0x41S    # 'A'
        0x4cS    # 'L'
        0x44S    # 'D'
        0x41S    # 'A'
        0x54S    # 'T'
        0x45S    # 'E'
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->msgno:I

    .line 83
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;

    .line 92
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "pex":Ljava/text/ParseException;
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "INTERNALDATE parse error"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "INTERNALDATE is NIL"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "d"    # Ljava/util/Date;

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->df:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v2, p0, v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 121
    monitor-exit v1

    .line 127
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v1

    neg-int v1, v1

    .line 135
    .local v1, "rawOffsetInMins":I
    if-gez v1, :cond_0

    .line 136
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    neg-int v1, v1

    goto :goto_0

    .line 139
    :cond_0
    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :goto_0
    div-int/lit8 v2, v1, 0x3c

    .line 142
    .local v2, "offsetInHrs":I
    rem-int/lit8 v3, v1, 0x3c

    .line 144
    .local v3, "offsetInMins":I
    div-int/lit8 v4, v2, 0xa

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    rem-int/lit8 v4, v2, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    div-int/lit8 v4, v3, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    rem-int/lit8 v4, v3, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 121
    .end local v1
    .end local v2
    .end local v3
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->date:Ljava/util/Date;

    return-object v0
.end method
