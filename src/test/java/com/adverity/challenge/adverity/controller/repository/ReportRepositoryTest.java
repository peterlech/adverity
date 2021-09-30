package com.adverity.challenge.adverity.controller.repository;

/**
 * @author Piotr Lechnio <plechnio@gmail.com>
 */

import com.adverity.challenge.adverity.model.ReportRow;
import com.adverity.challenge.adverity.repository.ReportRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(MockitoJUnitRunner.class)
public class ReportRepositoryTest {

    @Mock
    private ReportRepository repository;

    @Before
    public void init() {
        List<ReportRow> records = new ArrayList<>();
        records.add(new ReportRow("1", "Google", "Twitter", "25/08/19", "7", "Desc", "Clicks", "4", 22));
        records.add(new ReportRow("2", "Microsoft", "Twitter", "22/08/19", "2", "Desc", "Impressions", "2", 11));
        Mockito.when(repository.findAll()).thenReturn(records);
    }

    @Test
    public void checkContexts() throws Exception {
        assert repository != null;
    }

    /**
     * Test repository and pull all records
     */
    @Test
    public void findAll() throws Exception {

        Iterable<ReportRow> data = repository.findAll();
        List<ReportRow> result = new ArrayList<ReportRow>();
        data.iterator().forEachRemaining(result::add);
        assert result.size() == 2;
    }

}