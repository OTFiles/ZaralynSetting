.class Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;
.super Ljava/lang/Object;
.source "IMAPMessage.java"

# interfaces
.implements Lcom/sun/mail/imap/Utility$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchProfileCondition"
.end annotation


# instance fields
.field private hdrs:[Ljava/lang/String;

.field private needBodyStructure:Z

.field private needEnvelope:Z

.field private needFlags:Z

.field private needHeaders:Z

.field private needSize:Z

.field private needUID:Z


# direct methods
.method public constructor <init>(Ljavax/mail/FetchProfile;)V
    .locals 2
    .param p1, "fp"    # Ljavax/mail/FetchProfile;

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needEnvelope:Z

    .line 935
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needFlags:Z

    .line 936
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needBodyStructure:Z

    .line 937
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needUID:Z

    .line 938
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needHeaders:Z

    .line 939
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needSize:Z

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    .line 943
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 944
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needEnvelope:Z

    .line 945
    :cond_0
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needFlags:Z

    .line 947
    :cond_1
    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needBodyStructure:Z

    .line 949
    :cond_2
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 950
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needUID:Z

    .line 951
    :cond_3
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 952
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needHeaders:Z

    .line 953
    :cond_4
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 954
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needSize:Z

    .line 955
    :cond_5
    invoke-virtual {p1}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    .line 956
    return-void
.end method


# virtual methods
.method public test(Lcom/sun/mail/imap/IMAPMessage;)Z
    .locals 6
    .param p1, "m"    # Lcom/sun/mail/imap/IMAPMessage;

    .line 960
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needEnvelope:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object v0

    if-nez v0, :cond_0

    .line 961
    return v1

    .line 962
    :cond_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needFlags:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$1(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;

    move-result-object v0

    if-nez v0, :cond_1

    .line 963
    return v1

    .line 964
    :cond_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needBodyStructure:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$2(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    if-nez v0, :cond_2

    .line 965
    return v1

    .line 966
    :cond_2
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needUID:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 967
    return v1

    .line 968
    :cond_3
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needHeaders:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$3(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 969
    return v1

    .line 970
    :cond_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needSize:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$4(Lcom/sun/mail/imap/IMAPMessage;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 971
    return v1

    .line 974
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_6

    .line 979
    .end local v0
    const/4 v0, 0x0

    return v0

    .line 975
    .restart local v0
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/IMAPMessage;->access$5(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 976
    return v1

    .line 974
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
