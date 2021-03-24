package net.playtogether.jpa.entity;


import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;


 
@Entity
@Table(name = "meetings")
@Getter
@Setter
public class Meeting extends BaseEntity {
 
    
    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    @Column(name = "date")
    private LocalDateTime date;

    @ManyToMany
    private List<User> participants;

    @Column(name = "description")
    private String description;

    @ManyToOne(optional = false)
    @JoinColumn(name = "sport_id")
    private Sport sport;
    
    public Meeting(int id, String address, String city, LocalDateTime date, List<User> participants, String description, Sport sport) {
		this.id=id;
		this.address=address;
		this.city=city;
		this.date=date;
		this.participants=participants;
		this.description=description;
		this.sport=sport;
	}
    
    public Meeting () {
    	
    }

    
    
}
