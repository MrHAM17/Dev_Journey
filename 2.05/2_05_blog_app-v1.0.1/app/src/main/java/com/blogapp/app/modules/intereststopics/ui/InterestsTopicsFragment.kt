package com.blogapp.app.modules.intereststopics.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseFragment
import com.blogapp.app.databinding.FragmentInterestsTopicsBinding
import com.blogapp.app.modules.intereststopics.`data`.model.IntereststopicsRowModel
import com.blogapp.app.modules.intereststopics.`data`.viewmodel.InterestsTopicsVM
import kotlin.Int
import kotlin.String

class InterestsTopicsFragment :
        BaseFragment<FragmentInterestsTopicsBinding>(R.layout.fragment_interests_topics) {
    private val viewModel: InterestsTopicsVM by viewModels<InterestsTopicsVM>()

    override fun onInitialized() {
        viewModel.navArguments = arguments
        val interestsTopicsAdapter =
                InterestsTopicsAdapter(viewModel.interestsTopicsList.value?:mutableListOf())
        binding.recyclerInterestsTopics.adapter = interestsTopicsAdapter
        interestsTopicsAdapter.setOnItemClickListener(
        object : InterestsTopicsAdapter.OnItemClickListener {
            override fun onItemClick(view:View, position:Int, item : IntereststopicsRowModel) {
                onClickRecyclerInterestsTopics(view, position, item)
            }
        }
        )
        viewModel.interestsTopicsList.observe(requireActivity()) {
            interestsTopicsAdapter.updateData(it)
        }
        binding.interestsTopicsVM = viewModel
    }

    override fun setUpClicks() {
    }

    fun onClickRecyclerInterestsTopics(
        view: View,
        position: Int,
        item: IntereststopicsRowModel
    ) {
    }

    companion object {
        const val TAG: String = "INTERESTS_TOPICS_FRAGMENT"
    }
}
